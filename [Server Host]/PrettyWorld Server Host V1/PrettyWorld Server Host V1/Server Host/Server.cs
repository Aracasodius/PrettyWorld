using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Sockets;
using System.Threading;

namespace PrettyNetworking
{
    class Server
    {
        private Socket _server;
        private int _maxClients = 20;

        private List<Socket> _currentClients;
        public List<Socket> ClientList
        {
            get { return _currentClients; }
        }

        public Server()
        {
            _server = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            _server.Bind(new IPEndPoint(IPAddress.Any, 4379));
            _server.Listen(_maxClients);
        }
    }
}
