from TestSim import TestSim


def main():
    # Get simulation ready to run.
    s = TestSim()

    # Before we do anything, lets simulate the network off.
    s.runTime(1)

    # Load the the layout of the network.
    s.loadTopo("long_line.topo")

    # Add a noise model to all of the motes.
    s.loadNoise("no_noise.txt")

    # Turn on all of the sensors.
    s.bootAll()

    # Add the main channels. These channels are declared in includes/channels.h
    s.addChannel(s.COMMAND_CHANNEL)
    s.addChannel(s.GENERAL_CHANNEL)
#    s.addChannel(s.HASHMAP_CHANNEL)
#    s.addChannel(s.MAPLIST_CHANNEL)
#    s.addChannel(s.FLOODING_CHANNEL)
#    s.addChannel(s.NEIGHBOR_CHANNEL)
#    s.addChannel(s.ROUTING_CHANNEL)
    s.addChannel(s.TRANSPORT_CHANNEL)
    s.addChannel(s.CHAT_CHANNEL)

    s.runTime(40)

    s.chat(2, "hello Nathan 48\r\n")
    s.runTime(60)

    s.chat(3, "hello Hamid 125\r\n")
    s.runTime(60)

    s.chat(5, "hello Andre 125\r\n")
    s.runTime(60)

    s.chat(2, "msg hey everyone!\r\n")
    s.runTime(50)

    s.chat(3, "whisper Andre meeting?\r\n")
    s.runTime(50)
    
    s.chat(3, "listusr\r\n")
    s.runTime(50)

if __name__ == '__main__':
    main()
