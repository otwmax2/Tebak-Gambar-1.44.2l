###### Class com.google.android.gms.internal.measurement.zzma (com.google.android.gms.internal.measurement.zzma)
.class final Lcom/google/android/gms/internal/measurement/zzma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# static fields
.field private static final a:Ljava/util/Iterator;

.field private static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzly;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzma;->a:Ljava/util/Iterator;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzma;->b:Ljava/lang/Iterable;

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzma;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static bridge synthetic b()Ljava/util/Iterator;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzma;->a:Ljava/util/Iterator;

    return-object v0
.end method
