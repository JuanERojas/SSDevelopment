.class public Lcom/tikilive/ui/model/DvrProvider;
.super Ljava/lang/Object;
.source "DvrProvider.java"


# static fields
.field private static mDvrRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tikilive/ui/model/Dvr;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/tikilive/ui/model/DvrProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/tikilive/ui/model/DvrProvider;->mDvrRequests:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tikilive/ui/model/DvrProvider;
    .locals 2

    const-class v0, Lcom/tikilive/ui/model/DvrProvider;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/model/DvrProvider;->mInstance:Lcom/tikilive/ui/model/DvrProvider;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/tikilive/ui/model/DvrProvider;

    invoke-direct {v1}, Lcom/tikilive/ui/model/DvrProvider;-><init>()V

    sput-object v1, Lcom/tikilive/ui/model/DvrProvider;->mInstance:Lcom/tikilive/ui/model/DvrProvider;

    .line 17
    :cond_0
    sget-object v1, Lcom/tikilive/ui/model/DvrProvider;->mInstance:Lcom/tikilive/ui/model/DvrProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 40
    sget-object v0, Lcom/tikilive/ui/model/DvrProvider;->mDvrRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getRequestById(I)Lcom/tikilive/ui/model/Dvr;
    .locals 1

    .line 29
    sget-object v0, Lcom/tikilive/ui/model/DvrProvider;->mDvrRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tikilive/ui/model/Dvr;

    return-object p1
.end method

.method public getRequests()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tikilive/ui/model/Dvr;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/tikilive/ui/model/DvrProvider;->mDvrRequests:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestsCount()I
    .locals 1

    .line 44
    sget-object v0, Lcom/tikilive/ui/model/DvrProvider;->mDvrRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public removeRequestById(I)V
    .locals 1

    .line 33
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/model/DvrProvider;->getRequestById(I)Lcom/tikilive/ui/model/Dvr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/tikilive/ui/model/DvrProvider;->mDvrRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRequest(Lcom/tikilive/ui/model/Dvr;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/tikilive/ui/model/DvrProvider;->mDvrRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
