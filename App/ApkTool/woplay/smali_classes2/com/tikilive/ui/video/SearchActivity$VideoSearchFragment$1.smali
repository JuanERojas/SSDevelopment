.class Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$1;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$1;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 141
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$1;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {p2}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$000(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$1;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {p2}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$000(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method
