using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Program
{
    class ProgramController
    {
        public ProgramController()
        {
            GetInput();
        }

        void GetInput()
        {
            switch (Console.ReadLine().ToLower())
            {
                case "stop":
                    Environment.Exit(0);
                    break;
                case "clear":
                    Console.Clear();
                    break;
            }

            GetInput();
        }
    }
}
