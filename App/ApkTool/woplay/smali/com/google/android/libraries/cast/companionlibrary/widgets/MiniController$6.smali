.class Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;
.super Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
.source "MiniController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setIcon(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setIcon(Landroid/graphics/Bitmap;)V

    .line 298
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$400(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    move-result-object p1

    if-ne p0, p1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$402(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;)Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 290
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$6;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
