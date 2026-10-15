###### Class com.google.android.gms.measurement.internal.zzag (com.google.android.gms.measurement.internal.zzag)
.class public final enum Lcom/google/android/gms/measurement/internal/zzag;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# static fields
.field public static final enum p:Lcom/google/android/gms/measurement/internal/zzag;

.field public static final enum q:Lcom/google/android/gms/measurement/internal/zzag;

.field public static final r:[Lcom/google/android/gms/measurement/internal/zzag;

.field private static final synthetic s:[Lcom/google/android/gms/measurement/internal/zzag;


# instance fields
.field public final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzag;

    const-string v1, "AD_STORAGE"

    const/4 v2, 0x0

    const-string v3, "ad_storage"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzag;

    const-string v3, "ANALYTICS_STORAGE"

    const/4 v4, 0x1

    const-string v5, "analytics_storage"

    .line 2
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    const/4 v3, 0x2

    new-array v5, v3, [Lcom/google/android/gms/measurement/internal/zzag;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzag;->s:[Lcom/google/android/gms/measurement/internal/zzag;

    new-array v3, v3, [Lcom/google/android/gms/measurement/internal/zzag;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzag;->r:[Lcom/google/android/gms/measurement/internal/zzag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzag;->o:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzag;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->s:[Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzag;

    return-object v0
.end method
