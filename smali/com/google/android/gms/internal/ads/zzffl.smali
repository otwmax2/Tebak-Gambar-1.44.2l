###### Class com.google.android.gms.internal.ads.zzffl (com.google.android.gms.internal.ads.zzffl)
.class public final Lcom/google/android/gms/internal/ads/zzffl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzffs;

.field private final b:Lcom/google/android/gms/internal/ads/zzffs;

.field private final c:Lcom/google/android/gms/internal/ads/zzffp;

.field private final d:Lcom/google/android/gms/internal/ads/zzffr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzffr;Lcom/google/android/gms/internal/ads/zzffs;Lcom/google/android/gms/internal/ads/zzffs;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffl;->c:Lcom/google/android/gms/internal/ads/zzffp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffl;->d:Lcom/google/android/gms/internal/ads/zzffr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffl;->a:Lcom/google/android/gms/internal/ads/zzffs;

    if-nez p4, :cond_10

    sget-object p1, Lcom/google/android/gms/internal/ads/zzffs;->r:Lcom/google/android/gms/internal/ads/zzffs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffl;->b:Lcom/google/android/gms/internal/ads/zzffs;

    return-void

    :cond_10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffl;->b:Lcom/google/android/gms/internal/ads/zzffs;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzffr;Lcom/google/android/gms/internal/ads/zzffs;Lcom/google/android/gms/internal/ads/zzffs;Z)Lcom/google/android/gms/internal/ads/zzffl;
    .registers 12

    const-string p4, "ImpressionType is null"

    .line 1
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/ads/zzfgr;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "Impression owner is null"

    .line 2
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/ads/zzfgr;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p4, Lcom/google/android/gms/internal/ads/zzffs;->r:Lcom/google/android/gms/internal/ads/zzffs;

    if-eq p2, p4, :cond_3a

    .line 4
    sget-object p4, Lcom/google/android/gms/internal/ads/zzffp;->p:Lcom/google/android/gms/internal/ads/zzffp;

    const-string v0, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, p4, :cond_1f

    sget-object p4, Lcom/google/android/gms/internal/ads/zzffs;->p:Lcom/google/android/gms/internal/ads/zzffs;

    if-eq p2, p4, :cond_19

    goto :goto_1f

    .line 5
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1f
    :goto_1f
    sget-object p4, Lcom/google/android/gms/internal/ads/zzffr;->p:Lcom/google/android/gms/internal/ads/zzffr;

    if-ne p1, p4, :cond_2e

    sget-object p4, Lcom/google/android/gms/internal/ads/zzffs;->p:Lcom/google/android/gms/internal/ads/zzffs;

    if-eq p2, p4, :cond_28

    goto :goto_2e

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2e
    :goto_2e
    new-instance p4, Lcom/google/android/gms/internal/ads/zzffl;

    const/4 v6, 0x1

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzffl;-><init>(Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzffr;Lcom/google/android/gms/internal/ads/zzffs;Lcom/google/android/gms/internal/ads/zzffs;Z)V

    return-object p4

    .line 11
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffl;->a:Lcom/google/android/gms/internal/ads/zzffs;

    const-string v2, "impressionOwner"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfgp;->h(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffl;->b:Lcom/google/android/gms/internal/ads/zzffs;

    const-string v2, "mediaEventsOwner"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfgp;->h(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffl;->c:Lcom/google/android/gms/internal/ads/zzffp;

    const-string v2, "creativeType"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfgp;->h(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffl;->d:Lcom/google/android/gms/internal/ads/zzffr;

    const-string v2, "impressionType"

    .line 5
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfgp;->h(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfgp;->h(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
