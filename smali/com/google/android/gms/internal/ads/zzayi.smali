###### Class com.google.android.gms.internal.ads.zzayi (com.google.android.gms.internal.ads.zzayi)
.class public final Lcom/google/android/gms/internal/ads/zzayi;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzayi;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayi;->zzb:Lcom/google/android/gms/internal/ads/zzayi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzayi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzayb;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayi;->zzb:Lcom/google/android/gms/internal/ads/zzayi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzayb;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzayi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayi;->zzb:Lcom/google/android/gms/internal/ads/zzayi;

    return-object v0
.end method

.method public static K()Lcom/google/android/gms/internal/ads/zzayi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayi;->zzb:Lcom/google/android/gms/internal/ads/zzayi;

    return-object v0
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzayi;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzd:I

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzayi;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzd:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_42

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    if-eq p1, v1, :cond_1c

    const/4 p2, 0x0

    if-eq p1, v0, :cond_16

    if-eq p1, p3, :cond_13

    return-object p2

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayi;->zzb:Lcom/google/android/gms/internal/ads/zzayi;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayb;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzayb;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayi;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzd"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzayg;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzayd;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzayi;->zzb:Lcom/google/android/gms/internal/ads/zzayi;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_42
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final L()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzd:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final N()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaye;->a(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final O()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayi;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayh;->a(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method
