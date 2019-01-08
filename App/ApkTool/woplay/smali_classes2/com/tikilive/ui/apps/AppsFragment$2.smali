.class Lcom/tikilive/ui/apps/AppsFragment$2;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/apps/AppsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/apps/AppsFragment;

.field final synthetic val$adapter:Lcom/tikilive/ui/apps/AppsAdapter;

.field final synthetic val$packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/apps/AppsFragment;Lcom/tikilive/ui/apps/AppsAdapter;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    iput-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->val$adapter:Lcom/tikilive/ui/apps/AppsAdapter;

    iput-object p3, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->val$packageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-static {v0}, Lcom/tikilive/ui/apps/AppsFragment;->access$100(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->val$adapter:Lcom/tikilive/ui/apps/AppsAdapter;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/apps/AppsAdapter;->getItem(I)Lcom/tikilive/ui/model/App;

    move-result-object p1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->val$packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/App;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/apps/AppsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    iget-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment$2;->this$0:Lcom/tikilive/ui/apps/AppsFragment;

    invoke-static {p1}, Lcom/tikilive/ui/apps/AppsFragment;->access$200(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1201ae

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
