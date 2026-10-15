###### Class com.google.android.gms.internal.measurement.zzio (com.google.android.gms.internal.measurement.zzio)
.class final Lcom/google/android/gms/internal/measurement/zzio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/measurement/zzjo;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjo;->a()Lcom/google/android/gms/internal/measurement/zzjo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->d:Lcom/google/android/gms/internal/measurement/zzjo;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjo;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->d:Lcom/google/android/gms/internal/measurement/zzjo;

    return-void
.end method
