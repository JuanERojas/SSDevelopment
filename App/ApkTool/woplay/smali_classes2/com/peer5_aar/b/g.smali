.class public final Lcom/peer5_aar/b/g;
.super Lcom/peer5_aar/b/i;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Lcom/peer5_aar/b/i;-><init>()V

    iput-object p1, p0, Lcom/peer5_aar/b/g;->a:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public final close()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "post close"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "HTTP/1.0 200 OK Content-Type: text/html \r\n"

    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/peer5_aar/b/g;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lcom/peer5_aar/b/g;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
