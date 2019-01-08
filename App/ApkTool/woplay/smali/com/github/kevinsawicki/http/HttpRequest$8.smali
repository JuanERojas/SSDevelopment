.class Lcom/github/kevinsawicki/http/HttpRequest$8;
.super Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kevinsawicki/http/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
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

.field final synthetic val$input:Ljava/io/InputStream;

.field final synthetic val$output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 2613
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    iput-object p4, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->val$input:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->val$output:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2617
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->access$100(Lcom/github/kevinsawicki/http/HttpRequest;)I

    move-result v0

    new-array v0, v0, [B

    .line 2619
    :goto_0
    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->val$input:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2620
    iget-object v2, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->val$output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2621
    iget-object v2, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    iget-object v3, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    invoke-static {v3}, Lcom/github/kevinsawicki/http/HttpRequest;->access$200(Lcom/github/kevinsawicki/http/HttpRequest;)J

    move-result-wide v3

    int-to-long v5, v1

    add-long v7, v3, v5

    invoke-static {v2, v7, v8}, Lcom/github/kevinsawicki/http/HttpRequest;->access$202(Lcom/github/kevinsawicki/http/HttpRequest;J)J

    .line 2622
    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    invoke-static {v1}, Lcom/github/kevinsawicki/http/HttpRequest;->access$400(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    move-result-object v1

    iget-object v2, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    invoke-static {v2}, Lcom/github/kevinsawicki/http/HttpRequest;->access$200(Lcom/github/kevinsawicki/http/HttpRequest;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

    invoke-static {v4}, Lcom/github/kevinsawicki/http/HttpRequest;->access$300(Lcom/github/kevinsawicki/http/HttpRequest;)J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;->onUpload(JJ)V

    goto :goto_0

    .line 2624
    :cond_0
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest$8;->this$0:Lcom/github/kevinsawicki/http/HttpRequest;

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

    .line 2613
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$8;->run()Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method
