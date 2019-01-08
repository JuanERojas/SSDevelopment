.class Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;
.super Ljava/lang/Object;
.source "MiniController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

.field final synthetic val$duration:I

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;II)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    iput p2, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->val$duration:I

    iput p3, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$000(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->val$duration:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->access$000(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
