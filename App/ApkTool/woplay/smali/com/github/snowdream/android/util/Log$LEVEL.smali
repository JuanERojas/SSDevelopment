.class public final enum Lcom/github/snowdream/android/util/Log$LEVEL;
.super Ljava/lang/Enum;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/snowdream/android/util/Log$LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/snowdream/android/util/Log$LEVEL;

.field public static final enum ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

.field public static final enum DEBUG:Lcom/github/snowdream/android/util/Log$LEVEL;

.field public static final enum ERROR:Lcom/github/snowdream/android/util/Log$LEVEL;

.field public static final enum INFO:Lcom/github/snowdream/android/util/Log$LEVEL;

.field public static final enum VERBOSE:Lcom/github/snowdream/android/util/Log$LEVEL;

.field public static final enum WARN:Lcom/github/snowdream/android/util/Log$LEVEL;


# instance fields
.field final level:I

.field final levelString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 882
    new-instance v0, Lcom/github/snowdream/android/util/Log$LEVEL;

    const-string v1, "VERBOSE"

    const-string v2, "V"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/github/snowdream/android/util/Log$LEVEL;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->VERBOSE:Lcom/github/snowdream/android/util/Log$LEVEL;

    .line 883
    new-instance v0, Lcom/github/snowdream/android/util/Log$LEVEL;

    const-string v1, "DEBUG"

    const-string v2, "D"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/github/snowdream/android/util/Log$LEVEL;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->DEBUG:Lcom/github/snowdream/android/util/Log$LEVEL;

    .line 884
    new-instance v0, Lcom/github/snowdream/android/util/Log$LEVEL;

    const-string v1, "INFO"

    const-string v2, "I"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v4, v7, v2}, Lcom/github/snowdream/android/util/Log$LEVEL;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->INFO:Lcom/github/snowdream/android/util/Log$LEVEL;

    .line 885
    new-instance v0, Lcom/github/snowdream/android/util/Log$LEVEL;

    const-string v1, "WARN"

    const-string v2, "W"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v6, v8, v2}, Lcom/github/snowdream/android/util/Log$LEVEL;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->WARN:Lcom/github/snowdream/android/util/Log$LEVEL;

    .line 886
    new-instance v0, Lcom/github/snowdream/android/util/Log$LEVEL;

    const-string v1, "ERROR"

    const-string v2, "E"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v7, v9, v2}, Lcom/github/snowdream/android/util/Log$LEVEL;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ERROR:Lcom/github/snowdream/android/util/Log$LEVEL;

    .line 887
    new-instance v0, Lcom/github/snowdream/android/util/Log$LEVEL;

    const-string v1, "ASSERT"

    const-string v2, "A"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/github/snowdream/android/util/Log$LEVEL;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

    .line 881
    new-array v0, v9, [Lcom/github/snowdream/android/util/Log$LEVEL;

    sget-object v1, Lcom/github/snowdream/android/util/Log$LEVEL;->VERBOSE:Lcom/github/snowdream/android/util/Log$LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/snowdream/android/util/Log$LEVEL;->DEBUG:Lcom/github/snowdream/android/util/Log$LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/snowdream/android/util/Log$LEVEL;->INFO:Lcom/github/snowdream/android/util/Log$LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/snowdream/android/util/Log$LEVEL;->WARN:Lcom/github/snowdream/android/util/Log$LEVEL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/snowdream/android/util/Log$LEVEL;->ERROR:Lcom/github/snowdream/android/util/Log$LEVEL;

    aput-object v1, v0, v7

    sget-object v1, Lcom/github/snowdream/android/util/Log$LEVEL;->ASSERT:Lcom/github/snowdream/android/util/Log$LEVEL;

    aput-object v1, v0, v8

    sput-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->$VALUES:[Lcom/github/snowdream/android/util/Log$LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 893
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 894
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 897
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 898
    iput p3, p0, Lcom/github/snowdream/android/util/Log$LEVEL;->level:I

    .line 899
    iput-object p4, p0, Lcom/github/snowdream/android/util/Log$LEVEL;->levelString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/snowdream/android/util/Log$LEVEL;
    .locals 1

    .line 881
    const-class v0, Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/snowdream/android/util/Log$LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/github/snowdream/android/util/Log$LEVEL;
    .locals 1

    .line 881
    sget-object v0, Lcom/github/snowdream/android/util/Log$LEVEL;->$VALUES:[Lcom/github/snowdream/android/util/Log$LEVEL;

    invoke-virtual {v0}, [Lcom/github/snowdream/android/util/Log$LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/snowdream/android/util/Log$LEVEL;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 907
    iget v0, p0, Lcom/github/snowdream/android/util/Log$LEVEL;->level:I

    return v0
.end method

.method public getLevelString()Ljava/lang/String;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/github/snowdream/android/util/Log$LEVEL;->levelString:Ljava/lang/String;

    return-object v0
.end method
