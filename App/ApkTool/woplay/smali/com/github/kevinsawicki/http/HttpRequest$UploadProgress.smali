.class public interface abstract Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadProgress"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 423
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress$1;

    invoke-direct {v0}, Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress$1;-><init>()V

    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;->DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$UploadProgress;

    return-void
.end method


# virtual methods
.method public abstract onUpload(JJ)V
.end method
