###### Class com.google.android.gms.internal.firebase_auth.zzjz (com.google.android.gms.internal.firebase_auth.zzjz)
.class final Lcom/google/android/gms/internal/firebase_auth/zzjz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final c:Lcom/google/android/gms/internal/firebase_auth/zzjz;


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase_auth/zzkg;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkd<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzjz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c:Lcom/google/android/gms/internal/firebase_auth/zzjz;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjz;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzje;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a:Lcom/google/android/gms/internal/firebase_auth/zzkg;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/firebase_auth/zzjz;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjz;->c:Lcom/google/android/gms/internal/firebase_auth/zzjz;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzkd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/firebase_auth/zzkd<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzii;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjz;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzkd;

    if-nez v1, :cond_28

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a:Lcom/google/android/gms/internal/firebase_auth/zzkg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkg;->c(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzii;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzii;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjz;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzkd;

    if-eqz p1, :cond_28

    move-object v1, p1

    :cond_28
    return-object v1
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/firebase_auth/zzkd<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object p1

    return-object p1
.end method
