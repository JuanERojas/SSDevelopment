.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;
.super Landroid/os/AsyncTask;
.source "SpeedTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialiseNetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;


# direct methods
.method private constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;Lcom/tikilive/ui/speedtest/SpeedTestActivity$1;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;-><init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 624
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$InitialiseNetworkTask;->doInBackground([Ljava/net/URL;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Void;
    .locals 3

    .line 628
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    const/4 v1, 0x0

    .line 629
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 630
    new-instance v2, Ljava/net/InetSocketAddress;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x50

    invoke-direct {v2, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x3a98

    invoke-virtual {v0, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 631
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
