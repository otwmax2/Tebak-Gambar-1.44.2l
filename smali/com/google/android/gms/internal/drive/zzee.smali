###### Class com.google.android.gms.internal.drive.zzee (com.google.android.gms.internal.drive.zzee)
.class public final Lcom/google/android/gms/internal/drive/zzee;
.super Lcom/google/android/gms/internal/drive/zzet;


# static fields
.field private static final s:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final o:I

.field private final p:Lcom/google/android/gms/drive/events/zzi;

.field private final q:Lcom/google/android/gms/internal/drive/zzeg;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "EventCallback"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzee;->s:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method static synthetic X0()Lcom/google/android/gms/common/internal/GmsLogger;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzee;->s:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method


# virtual methods
.method public final D4(Lcom/google/android/gms/internal/drive/zzfp;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzfp;->V3()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzee;->o:I

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->o()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzee;->r:Ljava/util/List;

    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzee;->q:Lcom/google/android/gms/internal/drive/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzee;->p:Lcom/google/android/gms/drive/events/zzi;

    .line 5
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
