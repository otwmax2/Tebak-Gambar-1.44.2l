###### Class com.google.android.gms.internal.ads.zzfcs (com.google.android.gms.internal.ads.zzfcs)
.class public abstract Lcom/google/android/gms/internal/ads/zzfcs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final d:Lcom/google/android/gms/internal/ads/zzfut;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/android/gms/internal/ads/zzfct;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfcs;->d:Lcom/google/android/gms/internal/ads/zzfut;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfct;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcs;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfcs;->c:Lcom/google/android/gms/internal/ads/zzfct;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfct;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcs;->c:Lcom/google/android/gms/internal/ads/zzfct;

    return-object p0
.end method

.method static bridge synthetic d()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfcs;->d:Lcom/google/android/gms/internal/ads/zzfut;

    return-object v0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfuu;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcs;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzfcs;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfci;
    .registers 5

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfci;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfci;-><init>(Lcom/google/android/gms/internal/ads/zzfcs;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfch;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfcr;
    .registers 12

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfcr;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfcr;-><init>(Lcom/google/android/gms/internal/ads/zzfcs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfut;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfcq;)V

    return-object v8
.end method

.method protected abstract f(Ljava/lang/Object;)Ljava/lang/String;
.end method
