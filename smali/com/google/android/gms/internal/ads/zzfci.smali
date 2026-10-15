###### Class com.google.android.gms.internal.ads.zzfci (com.google.android.gms.internal.ads.zzfci)
.class public final Lcom/google/android/gms/internal/ads/zzfci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzfcs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfcs;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfch;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfci;->c:Lcom/google/android/gms/internal/ads/zzfcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfci;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfci;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfcr;
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfci;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfui;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfcg;->a:Lcom/google/android/gms/internal/ads/zzfcg;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfui;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v7

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfcr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfci;->c:Lcom/google/android/gms/internal/ads/zzfcs;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfci;->a:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfci;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfcs;->e(Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfuu;

    move-result-object v2

    .line 3
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfui;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzfcr;-><init>(Lcom/google/android/gms/internal/ads/zzfcs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfut;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfcq;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzfcg (com.google.android.gms.internal.ads.zzfcg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfcg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfcg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfcg;->a:Lcom/google/android/gms/internal/ads/zzfcg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
