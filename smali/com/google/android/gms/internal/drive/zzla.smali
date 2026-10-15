###### Class com.google.android.gms.internal.drive.zzla (com.google.android.gms.internal.drive.zzla)
.class abstract Lcom/google/android/gms/internal/drive/zzla;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/drive/zzla;

.field private static final b:Lcom/google/android/gms/internal/drive/zzla;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzlc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzlc;-><init>(Lcom/google/android/gms/internal/drive/zzlb;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzla;->a:Lcom/google/android/gms/internal/drive/zzla;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzld;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzld;-><init>(Lcom/google/android/gms/internal/drive/zzlb;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzla;->b:Lcom/google/android/gms/internal/drive/zzla;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzlb;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzla;-><init>()V

    return-void
.end method

.method static c()Lcom/google/android/gms/internal/drive/zzla;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzla;->a:Lcom/google/android/gms/internal/drive/zzla;

    return-object v0
.end method

.method static d()Lcom/google/android/gms/internal/drive/zzla;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzla;->b:Lcom/google/android/gms/internal/drive/zzla;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)V
.end method

.method abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
