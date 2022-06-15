/**
 * This class provides the TCP Transport functionality for nodes on the network.
 */

#include <Timer.h>
#include "../../includes/CommandMsg.h"
#include "../includes/packet.h"
#include "../includes/socket.h"

configuration TransportC {
    provides interface Transport;
}

implementation {
    components TransportP;
    Transport = TransportP;

    components new SimpleSendC(AM_PACK);
    TransportP.Sender -> SimpleSendC;

    components NeighborDiscoveryC;
    TransportP.NeighborDiscovery -> NeighborDiscoveryC;

    components DistanceVectorRoutingC;
    TransportP.DistanceVectorRouting -> DistanceVectorRoutingC;

    components new TimerMilliC() as TransmissionTimer;
    TransportP.TransmissionTimer -> TransmissionTimer;

    components RandomC as Random;
    TransportP.Random -> Random;

    components new HashmapC(uint8_t, 20) as SocketMap;
    TransportP.SocketMap -> SocketMap;
}
