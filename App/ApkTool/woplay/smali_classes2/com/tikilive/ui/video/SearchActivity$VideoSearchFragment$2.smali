.class Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 148
    iput-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$2;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    and-int/lit16 p2, p2, 0xff

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 153
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$2;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-static {p2}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->access$100(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V

    .line 154
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$2;->this$0:Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-virtual {p2}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string p3, "input_method"

    .line 155
    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 156
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
