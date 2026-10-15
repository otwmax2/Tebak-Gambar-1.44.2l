###### Class com.facebook.internal.InternalSettings (com.facebook.internal.InternalSettings)
.class public final Lcom/facebook/internal/InternalSettings;
.super Ljava/lang/Object;
.source "InternalSettings.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/InternalSettings;

.field private static final UNITY_PREFIX:Ljava/lang/String; = "Unity."

.field private static volatile customUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/InternalSettings;

    invoke-direct {v0}, Lcom/facebook/internal/InternalSettings;-><init>()V

    sput-object v0, Lcom/facebook/internal/InternalSettings;->INSTANCE:Lcom/facebook/internal/InternalSettings;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCustomUserAgent()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/InternalSettings;->customUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static final isUnityApp()Z
    .registers 5

    .line 1
    sget-object v0, Lcom/facebook/internal/InternalSettings;->customUserAgent:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_12

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Unity."

    invoke-static {v0, v4, v2, v3, v1}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic isUnityApp$annotations()V
    .registers 0

    return-void
.end method

.method public static final setCustomUserAgent(Ljava/lang/String;)V
    .registers 2

    const-string v0, "value"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p0, Lcom/facebook/internal/InternalSettings;->customUserAgent:Ljava/lang/String;

    return-void
.end method
