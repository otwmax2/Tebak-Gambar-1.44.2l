###### Class com.google.android.gms.internal.drive.zzjw (com.google.android.gms.internal.drive.zzjw)
.class final Lcom/google/android/gms/internal/drive/zzjw;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjw;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzjw;->a:Ljava/lang/Class;

    return-void
.end method

.method private static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/drive/zzjx;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzjw;->a:Ljava/lang/Class;

    if-eqz v0, :cond_b

    :try_start_4
    const-string v0, "getEmptyRegistry"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjw;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 3
    :catch_b
    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/drive/zzjx;->c:Lcom/google/android/gms/internal/drive/zzjx;

    return-object v0
.end method

.method private static final c(Ljava/lang/String;)Lcom/google/android/gms/internal/drive/zzjx;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzjw;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/drive/zzjx;

    return-object p0
.end method
