###### Class com.facebook.gamingservices.GamingContext (com.facebook.gamingservices.GamingContext)
.class public final Lcom/facebook/gamingservices/GamingContext;
.super Ljava/lang/Object;
.source "GamingContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/GamingContext$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/gamingservices/GamingContext$Companion;

.field private static final DEFAULT_TIMEOUT:I = 0x5

.field private static currentContext:Lcom/facebook/gamingservices/GamingContext;


# instance fields
.field private final contextID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/GamingContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/GamingContext$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/GamingContext;->Companion:Lcom/facebook/gamingservices/GamingContext$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "contextID"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurrentContext$cp()Lcom/facebook/gamingservices/GamingContext;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/gamingservices/GamingContext;->currentContext:Lcom/facebook/gamingservices/GamingContext;

    return-object v0
.end method

.method public static final synthetic access$setCurrentContext$cp(Lcom/facebook/gamingservices/GamingContext;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/facebook/gamingservices/GamingContext;->currentContext:Lcom/facebook/gamingservices/GamingContext;

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/gamingservices/GamingContext;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/gamingservices/GamingContext;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/GamingContext;->copy(Ljava/lang/String;)Lcom/facebook/gamingservices/GamingContext;

    move-result-object p0

    return-object p0
.end method

.method public static final getCurrentGamingContext()Lcom/facebook/gamingservices/GamingContext;
    .registers 1

    sget-object v0, Lcom/facebook/gamingservices/GamingContext;->Companion:Lcom/facebook/gamingservices/GamingContext$Companion;

    invoke-virtual {v0}, Lcom/facebook/gamingservices/GamingContext$Companion;->getCurrentGamingContext()Lcom/facebook/gamingservices/GamingContext;

    move-result-object v0

    return-object v0
.end method

.method public static final setCurrentGamingContext(Lcom/facebook/gamingservices/GamingContext;)V
    .registers 2

    sget-object v0, Lcom/facebook/gamingservices/GamingContext;->Companion:Lcom/facebook/gamingservices/GamingContext$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/gamingservices/GamingContext$Companion;->setCurrentGamingContext(Lcom/facebook/gamingservices/GamingContext;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/facebook/gamingservices/GamingContext;
    .registers 3

    const-string v0, "contextID"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/gamingservices/GamingContext;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/GamingContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/facebook/gamingservices/GamingContext;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/facebook/gamingservices/GamingContext;

    iget-object v1, p0, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    invoke-static {v1, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getContextID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GamingContext(contextID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/GamingContext;->contextID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.gamingservices.GamingContext.Companion (com.facebook.gamingservices.GamingContext$Companion)
.class public final Lcom/facebook/gamingservices/GamingContext$Companion;
.super Ljava/lang/Object;
.source "GamingContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/GamingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/gamingservices/GamingContext$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentGamingContext()Lcom/facebook/gamingservices/GamingContext;
    .registers 5

    .line 1
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONTEXT_GET_ID:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, v1, v2}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAndWait(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;I)Lcom/facebook/GraphResponse;

    move-result-object v0

    if-nez v0, :cond_18

    :goto_16
    move-object v0, v3

    goto :goto_25

    .line 5
    :cond_18
    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_16

    :cond_1f
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    if-nez v0, :cond_28

    return-object v3

    .line 6
    :cond_28
    new-instance v1, Lcom/facebook/gamingservices/GamingContext;

    invoke-direct {v1, v0}, Lcom/facebook/gamingservices/GamingContext;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_2e
    invoke-static {}, Lcom/facebook/gamingservices/GamingContext;->access$getCurrentContext$cp()Lcom/facebook/gamingservices/GamingContext;

    move-result-object v0

    return-object v0
.end method

.method public final setCurrentGamingContext(Lcom/facebook/gamingservices/GamingContext;)V
    .registers 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 2
    :cond_c
    invoke-static {p1}, Lcom/facebook/gamingservices/GamingContext;->access$setCurrentContext$cp(Lcom/facebook/gamingservices/GamingContext;)V

    return-void
.end method
