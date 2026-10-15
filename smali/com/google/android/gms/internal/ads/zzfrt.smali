###### Class com.google.android.gms.internal.ads.zzfrt (com.google.android.gms.internal.ads.zzfrt)
.class final Lcom/google/android/gms/internal/ads/zzfrt;
.super Lcom/google/android/gms/internal/ads/zzfqk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static final s:Lcom/google/android/gms/internal/ads/zzfqk;


# instance fields
.field final transient q:[Ljava/lang/Object;

.field private final transient r:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrt;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfrt;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfrt;->s:Lcom/google/android/gms/internal/ads/zzfqk;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrt;->q:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfrt;->r:I

    return-void
.end method


# virtual methods
.method final c([Ljava/lang/Object;I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrt;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfrt;->r:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfrt;->r:I

    add-int/2addr p2, p1

    return p2
.end method

.method final g()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrt;->r:I

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrt;->r:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrt;->q:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method final i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final m()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrt;->q:[Ljava/lang/Object;

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfrt;->r:I

    return v0
.end method
