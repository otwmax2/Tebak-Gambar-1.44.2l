###### Class com.google.android.gms.internal.firebase_messaging.zzw (com.google.android.gms.internal.firebase_messaging.zzw)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzw;
.super Ljava/io/OutputStream;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field private o:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    return-void
.end method


# virtual methods
.method final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    return-wide v0
.end method

.method public final write(I)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    return-void
.end method

.method public final write([B)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    .line 1
    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    return-void
.end method

.method public final write([BII)V
    .registers 6

    if-ltz p2, :cond_13

    .line 2
    array-length p1, p1

    if-gt p2, p1, :cond_13

    if-ltz p3, :cond_13

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_13

    if-ltz p2, :cond_13

    .line 3
    iget-wide p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzw;->o:J

    return-void

    .line 4
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 5
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
