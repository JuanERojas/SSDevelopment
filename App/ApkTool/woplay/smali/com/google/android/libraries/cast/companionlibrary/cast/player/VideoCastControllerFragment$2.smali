.class Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;
.super Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
.source "VideoCastControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->showImage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;IIZLandroid/net/Uri;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iput-object p5, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$1;)V

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$1502(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    .line 605
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$1500(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->access$1402(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 606
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$1500(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;->access$1702(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$UrlAndBitmap;Landroid/net/Uri;)Landroid/net/Uri;

    .line 607
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastController;->setImage(Landroid/graphics/Bitmap;)V

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$1800(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    move-result-object p1

    if-ne p0, p1, :cond_1

    .line 612
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->access$1802(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 600
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
