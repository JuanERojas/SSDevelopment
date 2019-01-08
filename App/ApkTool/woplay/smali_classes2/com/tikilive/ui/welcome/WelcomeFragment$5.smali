.class Lcom/tikilive/ui/welcome/WelcomeFragment$5;
.super Landroid/support/v7/widget/StaggeredGridLayoutManager;
.source "WelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/WelcomeFragment;->initMainMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/WelcomeFragment;II)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$5;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .line 344
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$5;->getPosition(Landroid/view/View;)I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p2, v1, :cond_5

    const/16 v1, 0x21

    if-eq p2, v1, :cond_3

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    .line 383
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 371
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$5;->getItemCount()I

    move-result p2

    if-le v0, p2, :cond_1

    return-object p1

    .line 375
    :cond_1
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$5;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v2

    .line 349
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$5;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$400(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 350
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment$5;->this$0:Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-static {p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->access$400(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v2

    :cond_5
    if-nez v0, :cond_6

    return-object p1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 361
    invoke-virtual {p0, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$5;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    return-object v2
.end method
