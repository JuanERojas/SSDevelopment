.class Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "MainMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;-><init>(Lcom/tikilive/ui/welcome/MainMenuAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;Lcom/tikilive/ui/welcome/MainMenuAdapter;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->val$this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 p1, 0x1

    const-wide/16 v0, 0x12c

    const-wide/16 v2, -0x1

    const/16 v4, 0x16

    if-ne p2, v4, :cond_1

    .line 145
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 147
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    .line 149
    iget-object v4, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v4, v4, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v4}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$300(Lcom/tikilive/ui/welcome/MainMenuAdapter;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    iget-object v2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v2}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$300(Lcom/tikilive/ui/welcome/MainMenuAdapter;)J

    move-result-wide v2

    sub-long v4, p2, v2

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    return p1

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {p1, p2, p3}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$302(Lcom/tikilive/ui/welcome/MainMenuAdapter;J)J

    goto :goto_0

    :cond_1
    const/16 v4, 0x15

    if-ne p2, v4, :cond_3

    .line 155
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_3

    .line 157
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    .line 159
    iget-object v4, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v4, v4, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v4}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$400(Lcom/tikilive/ui/welcome/MainMenuAdapter;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    iget-object v2, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {v2}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$400(Lcom/tikilive/ui/welcome/MainMenuAdapter;)J

    move-result-wide v2

    sub-long v4, p2, v2

    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    return p1

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder$2;->this$1:Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/welcome/MainMenuAdapter$ViewHolder;->this$0:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-static {p1, p2, p3}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->access$402(Lcom/tikilive/ui/welcome/MainMenuAdapter;J)J

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
