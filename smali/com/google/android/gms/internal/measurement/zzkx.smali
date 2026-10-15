###### Class com.google.android.gms.internal.measurement.zzkx (com.google.android.gms.internal.measurement.zzkx)
.class abstract Lcom/google/android/gms/internal/measurement/zzkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/zzkx;

.field private static final b:Lcom/google/android/gms/internal/measurement/zzkx;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;-><init>(Lcom/google/android/gms/internal/measurement/zzks;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkx;->a:Lcom/google/android/gms/internal/measurement/zzkx;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkv;-><init>(Lcom/google/android/gms/internal/measurement/zzku;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkx;->b:Lcom/google/android/gms/internal/measurement/zzkx;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzkw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/android/gms/internal/measurement/zzkx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkx;->a:Lcom/google/android/gms/internal/measurement/zzkx;

    return-object v0
.end method

.method static d()Lcom/google/android/gms/internal/measurement/zzkx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkx;->b:Lcom/google/android/gms/internal/measurement/zzkx;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)V
.end method

.method abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
