.class Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IntroductoryOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->fadeOut(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->access$900(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)V

    .line 234
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->access$1000(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->access$1000(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    .line 236
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->access$1002(Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;)Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$OnOverlayDismissedListener;

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$2;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->remove()V

    return-void
.end method
