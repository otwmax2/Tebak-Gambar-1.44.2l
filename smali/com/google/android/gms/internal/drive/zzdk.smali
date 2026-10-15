###### Class com.google.android.gms.internal.drive.zzdk (com.google.android.gms.internal.drive.zzdk)
.class final Lcom/google/android/gms/internal/drive/zzdk;
.super Lcom/google/android/gms/internal/drive/zzl;


# instance fields
.field private final o:Lcom/google/android/gms/drive/events/ListenerToken;

.field private final p:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic q:Lcom/google/android/gms/internal/drive/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->q:Lcom/google/android/gms/internal/drive/zzch;

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzl;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->o:Lcom/google/android/gms/drive/events/ListenerToken;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzdk;->p:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method

.method private final t1(Lcom/google/android/gms/internal/drive/zzdg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/drive/zzdg<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdk;->p:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzdo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/drive/zzdo;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzdg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->c(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method


# virtual methods
.method final synthetic Q4(Lcom/google/android/gms/internal/drive/zzfh;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbi;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfh;->o:Lcom/google/android/gms/drive/Contents;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzbi;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/drive/events/OpenFileCallback;->a(Lcom/google/android/gms/drive/DriveContents;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->q:Lcom/google/android/gms/internal/drive/zzch;

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->o:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->z(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method final synthetic X0(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/drive/events/OpenFileCallback;->b(Ljava/lang/Exception;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzdk;->q:Lcom/google/android/gms/internal/drive/zzch;

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzdk;->o:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;->z(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final i7(Lcom/google/android/gms/internal/drive/zzfl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzdm;-><init>(Lcom/google/android/gms/internal/drive/zzfl;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->t1(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

.method public final r5(Lcom/google/android/gms/internal/drive/zzfh;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdn;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzfh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->t1(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

.method public final v0(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzdl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzdl;-><init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzdk;->t1(Lcom/google/android/gms/internal/drive/zzdg;)V

    return-void
.end method

###### Class com.google.android.gms.internal.drive.zzdl (com.google.android.gms.internal.drive.zzdl)
.class final synthetic Lcom/google/android/gms/internal/drive/zzdl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzdg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/drive/zzdk;

.field private final b:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdl;->a:Lcom/google/android/gms/internal/drive/zzdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdl;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdl;->a:Lcom/google/android/gms/internal/drive/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdl;->b:Lcom/google/android/gms/common/api/Status;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzdk;->X0(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V

    return-void
.end method

###### Class com.google.android.gms.internal.drive.zzdm (com.google.android.gms.internal.drive.zzdm)
.class final synthetic Lcom/google/android/gms/internal/drive/zzdm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzdg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/drive/zzfl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzfl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdm;->a:Lcom/google/android/gms/internal/drive/zzfl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdm;->a:Lcom/google/android/gms/internal/drive/zzfl;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    .line 2
    iget-wide v1, v0, Lcom/google/android/gms/internal/drive/zzfl;->o:J

    .line 3
    iget-wide v3, v0, Lcom/google/android/gms/internal/drive/zzfl;->p:J

    .line 4
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/google/android/gms/drive/events/OpenFileCallback;->c(JJ)V

    return-void
.end method

###### Class com.google.android.gms.internal.drive.zzdn (com.google.android.gms.internal.drive.zzdn)
.class final synthetic Lcom/google/android/gms/internal/drive/zzdn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzdg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/drive/zzdk;

.field private final b:Lcom/google/android/gms/internal/drive/zzfh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzfh;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdn;->a:Lcom/google/android/gms/internal/drive/zzdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdn;->b:Lcom/google/android/gms/internal/drive/zzfh;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdn;->a:Lcom/google/android/gms/internal/drive/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzdn;->b:Lcom/google/android/gms/internal/drive/zzfh;

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzdk;->Q4(Lcom/google/android/gms/internal/drive/zzfh;Lcom/google/android/gms/drive/events/OpenFileCallback;)V

    return-void
.end method
