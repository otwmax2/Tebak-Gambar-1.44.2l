###### Class com.google.android.gms.internal.measurement.zzjd (com.google.android.gms.internal.measurement.zzjd)
.class final Lcom/google/android/gms/internal/measurement/zzjd;
.super Lcom/google/android/gms/internal/measurement/zzjf;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# instance fields
.field private final b:[B

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzjc;)V
    .registers 6

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjf;-><init>(Lcom/google/android/gms/internal/measurement/zzje;)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzjd;->e:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->c:I

    return-void
.end method


# virtual methods
.method public final c(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjd;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjd;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->c:I

    if-lez v1, :cond_13

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjd;->c:I

    goto :goto_15

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjd;->d:I

    :goto_15
    return p1
.end method
