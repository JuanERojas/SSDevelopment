.class Lcom/github/kevinsawicki/http/HttpRequest$7;
.super Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kevinsawicki/http/HttpRequest;->receive(Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation<",
        "Lcom/github/kevinsawicki/http/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/kevinsawicki/http/HttpRequest;

.field final synthetic val$reader:Ljava/io/BufferedReader;

.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0

    .line 2027
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest$7;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    iput-object p4, p0, Lcom/github/kevinsawicki/http/HttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/github/kevinsawicki/http/HttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2031
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$7;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/github/kevinsawicki/http/HttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2027
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$7;->run()Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method
