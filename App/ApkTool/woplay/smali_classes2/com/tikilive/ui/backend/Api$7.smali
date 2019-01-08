.class Lcom/tikilive/ui/backend/Api$7;
.super Lcom/tikilive/ui/backend/Api$ApiBaseRequest;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/backend/Api;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/backend/Api;

.field final synthetic val$affiliateId:Ljava/lang/String;

.field final synthetic val$dealerReferralId:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/backend/Api;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v6, p0

    move-object v0, p1

    .line 681
    iput-object v0, v6, Lcom/tikilive/ui/backend/Api$7;->this$0:Lcom/tikilive/ui/backend/Api;

    move-object v0, p7

    iput-object v0, v6, Lcom/tikilive/ui/backend/Api$7;->val$username:Ljava/lang/String;

    move-object v0, p8

    iput-object v0, v6, Lcom/tikilive/ui/backend/Api$7;->val$email:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/tikilive/ui/backend/Api$7;->val$password:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/tikilive/ui/backend/Api$7;->val$affiliateId:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, v6, Lcom/tikilive/ui/backend/Api$7;->val$dealerReferralId:Ljava/lang/String;

    move-object v0, v6

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tikilive/ui/backend/Api$ApiBaseRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "username"

    .line 685
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$7;->val$username:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "email"

    .line 686
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$7;->val$email:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    .line 687
    iget-object v2, p0, Lcom/tikilive/ui/backend/Api$7;->val$password:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
