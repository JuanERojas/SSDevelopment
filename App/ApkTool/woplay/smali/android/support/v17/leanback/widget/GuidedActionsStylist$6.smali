.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;
.super Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;
.source "GuidedActionsStylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V
    .locals 0

    .line 1270
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;-><init>()V

    .line 1271
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 2

    .line 1274
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result p1

    .line 1276
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1277
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    return-object p1
.end method
