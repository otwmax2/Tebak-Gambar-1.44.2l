###### Class com.google.android.gms.internal.drive.zzbi (com.google.android.gms.internal.drive.zzbi)
.class public final Lcom/google/android/gms/internal/drive/zzbi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveContents;


# static fields
.field private static final e:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final a:Lcom/google/android/gms/drive/Contents;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DriveContentsImpl"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzbi;->e:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/Contents;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->d:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/Contents;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbi;->a:Lcom/google/android/gms/drive/Contents;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/drive/zzbi;)Lcom/google/android/gms/drive/Contents;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/drive/zzbi;->a:Lcom/google/android/gms/drive/Contents;

    return-object p0
.end method

.method static synthetic c()Lcom/google/android/gms/common/internal/GmsLogger;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzbi;->e:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->a:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->V3()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/drive/Contents;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->a:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method

.method public final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->a:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->W3()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->a(Landroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->b:Z

    return-void
.end method
