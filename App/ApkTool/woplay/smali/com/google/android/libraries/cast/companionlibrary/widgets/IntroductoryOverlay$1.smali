.class Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$1;
.super Ljava/lang/Object;
.source "IntroductoryOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->setButton(Ljava/lang/String;Landroid/content/res/TypedArray;)V
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

    .line 183
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay$1;->this$0:Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/IntroductoryOverlay;->fadeOut(J)V

    return-void
.end method
