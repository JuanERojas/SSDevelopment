.class Lcom/tikilive/ui/activity/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/activity/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/activity/RegisterActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$1;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    check-cast p1, Landroid/widget/CheckBox;

    .line 61
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$1;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$000(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/activity/RegisterActivity$1;->this$0:Lcom/tikilive/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/tikilive/ui/activity/RegisterActivity;->access$000(Lcom/tikilive/ui/activity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method
