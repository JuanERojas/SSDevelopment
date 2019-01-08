.class public Lcom/google/android/gms/flags/FlagRegistry;
.super Ljava/lang/Object;


# instance fields
.field private final zzacc:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/flags/Flag;",
            ">;"
        }
    .end annotation
.end field

.field private final zzacd:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/flags/Flag$StringFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final zzace:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/flags/Flag$StringFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzacc:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzacd:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzace:Ljava/util/Collection;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/flags/Singletons;->flagValueProvider()Lcom/google/android/gms/flags/FlagValueProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/flags/FlagValueProvider;->initialize(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getExperimentIdsFromClient()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzacd:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/flags/Flag$StringFlag;

    invoke-virtual {v2}, Lcom/google/android/gms/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public registerClientExperimentId(Lcom/google/android/gms/flags/Flag$StringFlag;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzacd:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerFlag(Lcom/google/android/gms/flags/Flag;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzacc:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerServiceExperimentId(Lcom/google/android/gms/flags/Flag$StringFlag;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzace:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registeredFlags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/flags/Flag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzacc:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public registeredServiceExperimentIdFlags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/flags/Flag$StringFlag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/flags/FlagRegistry;->zzace:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
