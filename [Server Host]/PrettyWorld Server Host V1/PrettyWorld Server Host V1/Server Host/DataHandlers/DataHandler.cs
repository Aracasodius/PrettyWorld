using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Sockets;

namespace PrettyNetworking.Utility
{
    class DataHandler
    {
        private Socket _masterClient;
        private int _masterID;
        private Server _masterServer;
        private byte[] _buffer;

        public DataHandler(Socket socket, int ID, ref Server server)
        {
            _masterClient = socket;
            _masterID = ID;
            _masterServer = server;

            _buffer = new byte[1024];
        }

        #region Receive Data
        public void ReceiveData()
        {
            try
            {
                _masterClient.BeginReceive(_buffer, 0, _buffer.Length, SocketFlags.None, new AsyncCallback(ReceiveCallback), _masterClient);
            }
            catch
            {
                //disconnect the client
            }
        }
        private void ReceiveCallback(IAsyncResult result)
        {
            int bytes = _masterClient.EndReceive(result);
            Array.Resize(ref _buffer, bytes);
        }
        #endregion

        #region Send Data
        public void SendPacketToOne(PackageType packageType, byte[] Data, int ID)
        {
            ByteBuffer byteBuffer = new ByteBuffer();

            switch (packageType)
            {
                case PackageType.ConnectData:

                    byteBuffer.WriteInt((int)packageType);
                    byteBuffer.WriteInt(ID);

                    //write the rest of the data needed like the world data
                    _masterClient.BeginSend(byteBuffer.ToArray(), 0, byteBuffer.Count(), SocketFlags.None, new AsyncCallback(SendCallback), _masterClient);
                    break;
            }
        }
        private void SendCallback(IAsyncResult result)
        {
            _masterClient.EndSend(result);
        }
        #endregion

        private void HandleDataPacket()
        {

        }
    }
}
