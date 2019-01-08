.class Lcom/tikilive/ui/account/DeviceAdapter$2;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/DeviceAdapter;->onBindViewHolder(Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/DeviceAdapter;

.field final synthetic val$holder:Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/DeviceAdapter;Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    iput-object p2, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->val$holder:Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 171
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$100(Lcom/tikilive/ui/account/DeviceAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->val$holder:Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/DeviceAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Device;

    .line 173
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object v1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$300(Lcom/tikilive/ui/account/DeviceAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1201f7

    .line 176
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1201f6

    .line 177
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 178
    iget-object v1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1201f5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/account/DeviceAdapter$2$1;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter$2$1;-><init>(Lcom/tikilive/ui/account/DeviceAdapter$2;Lcom/tikilive/ui/model/Device;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Device;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v2}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/tikilive/ui/notify/PlaybackTimer;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/notify/PlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/notify/PlaybackTimer;->getDeviceNotifier()Lcom/tikilive/ui/notify/DeviceNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f1201f2

    .line 216
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f1201f1

    .line 217
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 218
    iget-object p1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f1201f0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/tikilive/ui/account/DeviceAdapter$2$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/account/DeviceAdapter$2$2;-><init>(Lcom/tikilive/ui/account/DeviceAdapter$2;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_2

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Device;->isPrimary()Z

    move-result v1

    const v2, 0x7f1201f3

    if-eqz v1, :cond_5

    const v1, 0x7f120262

    .line 245
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 248
    iget-object v3, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v3}, Lcom/tikilive/ui/account/DeviceAdapter;->access$100(Lcom/tikilive/ui/account/DeviceAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tikilive/ui/model/Device;

    .line 249
    invoke-virtual {v4}, Lcom/tikilive/ui/model/Device;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Device;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    invoke-virtual {v4}, Lcom/tikilive/ui/model/Device;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const v1, 0x7f1201f4

    .line 256
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 258
    :cond_4
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    :cond_5
    const v1, 0x7f120261

    .line 262
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/tikilive/ui/account/DeviceAdapter$2;->this$0:Lcom/tikilive/ui/account/DeviceAdapter;

    invoke-static {v1}, Lcom/tikilive/ui/account/DeviceAdapter;->access$200(Lcom/tikilive/ui/account/DeviceAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120260

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/account/DeviceAdapter$2$3;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/account/DeviceAdapter$2$3;-><init>(Lcom/tikilive/ui/account/DeviceAdapter$2;Lcom/tikilive/ui/model/Device;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    :goto_2
    const p1, 0x7f120044

    .line 301
    new-instance v1, Lcom/tikilive/ui/account/DeviceAdapter$2$4;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/account/DeviceAdapter$2$4;-><init>(Lcom/tikilive/ui/account/DeviceAdapter$2;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
