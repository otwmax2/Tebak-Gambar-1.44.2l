###### Class com.google.android.gms.internal.ads.zzgky (com.google.android.gms.internal.ads.zzgky)
.class public final Lcom/google/android/gms/internal/ads/zzgky;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgky;


# instance fields
.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgky;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgky;->zzb:Lcom/google/android/gms/internal/ads/zzgky;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgky;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgky;->zzd:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgky;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzgkv;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgky;->zzb:Lcom/google/android/gms/internal/ads/zzgky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkv;

    return-object v0
.end method

.method static synthetic K()Lcom/google/android/gms/internal/ads/zzgky;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgky;->zzb:Lcom/google/android/gms/internal/ads/zzgky;

    return-object v0
.end method

.method public static L()Lcom/google/android/gms/internal/ads/zzgky;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgky;->zzb:Lcom/google/android/gms/internal/ads/zzgky;

    return-object v0
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/zzgky;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgky;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzgky;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgky;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzgky;Lcom/google/android/gms/internal/ads/zzgkx;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkx;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgky;->zzf:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_3a

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    if-eq p1, p3, :cond_1c

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13

    return-object p3

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgky;->zzb:Lcom/google/android/gms/internal/ads/zzgky;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkv;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgkv;-><init>(Lcom/google/android/gms/internal/ads/zzgku;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgky;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgky;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgky;->zzb:Lcom/google/android/gms/internal/ads/zzgky;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3a
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final J()Lcom/google/android/gms/internal/ads/zzgkx;
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgky;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkx;->c(I)Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkx;->u:Lcom/google/android/gms/internal/ads/zzgkx;

    :cond_a
    return-object v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgky;->zze:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgky;->zzd:Ljava/lang/String;

    return-object v0
.end method
