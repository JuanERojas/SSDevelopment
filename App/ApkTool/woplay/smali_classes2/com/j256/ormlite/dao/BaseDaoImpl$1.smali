.class final Lcom/j256/ormlite/dao/BaseDaoImpl$1;
.super Ljava/lang/ThreadLocal;
.source "BaseDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/BaseDaoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;
    .locals 2

    .line 72
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;-><init>(Lcom/j256/ormlite/dao/BaseDaoImpl$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$1;->initialValue()Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;

    move-result-object v0

    return-object v0
.end method
