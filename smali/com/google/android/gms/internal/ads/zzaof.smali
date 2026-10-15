###### Class com.google.android.gms.internal.ads.zzaof (com.google.android.gms.internal.ads.zzaof)
.class public final Lcom/google/android/gms/internal/ads/zzaof;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzaof;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgqv;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaof;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaof;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->u()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzh:I

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzaoe;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaoe;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzaof;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzaof;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgqv;->a()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->v(Lcom/google/android/gms/internal/ads/zzgqv;)Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    :cond_e
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/zzaof;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzf:Lcom/google/android/gms/internal/ads/zzgpe;

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzaof;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzd:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4c

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoe;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaoe;-><init>(Lcom/google/android/gms/internal/ads/zzamu;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaof;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaof;-><init>()V

    return-object p1

    :cond_22
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzanz;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    sget-object p3, Lcom/google/android/gms/internal/ads/zzanx;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4c
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
