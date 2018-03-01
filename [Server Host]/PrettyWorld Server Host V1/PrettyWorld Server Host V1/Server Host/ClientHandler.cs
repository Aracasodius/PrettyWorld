using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using PrettyNetworking.Utility;

namespace PrettyNetworking
{
    class ClientHandler
    {
        private Socket _client;
        private int _clientID;
        private Server _masterServer;

        private DataHandler _dataHandler;

        public ClientHandler(Socket socket, int ID, ref Server server)
        {
            _masterServer = server;
            _client = socket;
            _clientID = ID;

            _dataHandler = new DataHandler(socket, ID, ref server);

            _masterServer.Subscribe(_client);
            SendConnectData();
        }

        private void SendConnectData()
        {
            if (_client.Connected)
            {
                _dataHandler.SendPacketToOne(PackageType.ConnectData, null, _clientID);
            }
        }

        private void ReceiveData()
        {
            if (_client.Connected)
            {
                _dataHandler.ReceiveData();
            }
        }
    }
}
