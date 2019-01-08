.class Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;
.super Ljava/lang/Object;
.source "DvrItemDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->renderDvrItemDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

.field final synthetic val$dvrItem:Lcom/tikilive/ui/model/Dvr;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;Lcom/tikilive/ui/model/Dvr;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 304
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object p1

    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    const/4 v1, 0x0

    const v2, 0x7f12003a

    const v3, 0x7f12003b

    const v4, 0x1080027

    if-ne p1, v0, :cond_0

    .line 306
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1200e2

    .line 308
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1200e1

    .line 309
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4$1;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;)V

    .line 310
    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 316
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object p1

    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    if-ne p1, v0, :cond_1

    .line 320
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1200e4

    .line 322
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1200e3

    .line 323
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4$2;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4$2;-><init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;)V

    .line 324
    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object p1

    sget-object v0, Lcom/tikilive/ui/model/DvrStatus;->FAILED:Lcom/tikilive/ui/model/DvrStatus;

    if-ne p1, v0, :cond_2

    .line 333
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$4;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$500(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
