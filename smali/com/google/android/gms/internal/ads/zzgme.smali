###### Class com.google.android.gms.internal.ads.zzgme (com.google.android.gms.internal.ads.zzgme)
.class public final enum Lcom/google/android/gms/internal/ads/zzgme;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqo;


# static fields
.field public static final enum p:Lcom/google/android/gms/internal/ads/zzgme;

.field public static final enum q:Lcom/google/android/gms/internal/ads/zzgme;

.field public static final enum r:Lcom/google/android/gms/internal/ads/zzgme;

.field public static final enum s:Lcom/google/android/gms/internal/ads/zzgme;

.field public static final enum t:Lcom/google/android/gms/internal/ads/zzgme;

.field public static final enum u:Lcom/google/android/gms/internal/ads/zzgme;

.field private static final v:Lcom/google/android/gms/internal/ads/zzgqp;

.field private static final synthetic w:[Lcom/google/android/gms/internal/ads/zzgme;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgme;

    const-string v1, "UNKNOWN_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgme;

    const-string v3, "TINK"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgme;->q:Lcom/google/android/gms/internal/ads/zzgme;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgme;

    const-string v5, "LEGACY"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgme;->r:Lcom/google/android/gms/internal/ads/zzgme;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgme;

    const-string v7, "RAW"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzgme;->s:Lcom/google/android/gms/internal/ads/zzgme;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgme;

    const-string v9, "CRUNCHY"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzgme;->t:Lcom/google/android/gms/internal/ads/zzgme;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzgme;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    .line 6
    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzgme;->u:Lcom/google/android/gms/internal/ads/zzgme;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/ads/zzgme;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/ads/zzgme;->w:[Lcom/google/android/gms/internal/ads/zzgme;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgme;->v:Lcom/google/android/gms/internal/ads/zzgqp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgme;->o:I

    return-void
.end method

.method public static c(I)Lcom/google/android/gms/internal/ads/zzgme;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->t:Lcom/google/android/gms/internal/ads/zzgme;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->s:Lcom/google/android/gms/internal/ads/zzgme;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->r:Lcom/google/android/gms/internal/ads/zzgme;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->q:Lcom/google/android/gms/internal/ads/zzgme;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzgme;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgme;->w:[Lcom/google/android/gms/internal/ads/zzgme;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzgme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgme;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgme;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgme;->u:Lcom/google/android/gms/internal/ads/zzgme;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->o:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzgmd (com.google.android.gms.internal.ads.zzgmd)
.class final Lcom/google/android/gms/internal/ads/zzgmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqp;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
