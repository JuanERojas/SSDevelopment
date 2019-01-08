.class Landroid/support/v17/leanback/widget/SearchBar$7;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    .line 307
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$7;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 312
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$7;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 313
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$7;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-boolean p1, p1, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$7;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    .line 315
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$7;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$7;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 320
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$7;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    return-void
.end method
