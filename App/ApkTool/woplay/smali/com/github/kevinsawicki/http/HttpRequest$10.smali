.class Lcom/github/kevinsawicki/http/HttpRequest$10;
.super Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/io/Reader;)Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation<",
        "Lcom/github/kevinsawicki/http/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/kevinsawicki/http/HttpRequest;

.field final synthetic val$input:Ljava/io/Reader;

.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0

    .line 3026
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest$10;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    iput-object p3, p0, Lcom/github/kevinsawicki/http/HttpRequest$10;->val$input:Ljava/io/Reader;

    iput-object p4, p0, Lcom/github/kevinsawicki/http/HttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation;-><init>(Ljava/io/Flushable;)V

    return-void
.end method


# virtual methods
.method protected run()Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3030
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$10;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest$10;->val$input:Ljava/io/Reader;

    iget-object v2, p0, Lcom/github/kevinsawicki/http/HttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3026
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$10;->run()Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method
