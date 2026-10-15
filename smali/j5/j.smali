###### Class j5.j (j5.j)
.class public final Lj5/j;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final c:Lj5/j;


# instance fields
.field private final a:Lj5/o;

.field private final b:Lj5/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    sput-object v0, Lj5/j;->c:Lj5/j;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-static {}, Lj5/o;->a()Lj5/o;

    move-result-object v0

    invoke-static {}, Lj5/h;->a()Lj5/h;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj5/j;-><init>(Lj5/o;Lj5/h;)V

    return-void
.end method

.method private constructor <init>(Lj5/o;Lj5/h;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lj5/j;->a:Lj5/o;

    .line 4
    iput-object p2, p0, Lj5/j;->b:Lj5/h;

    return-void
.end method

.method public static a()Lj5/j;
    .registers 1

    .line 1
    sget-object v0, Lj5/j;->c:Lj5/j;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lj5/o;->d(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj5/j;->a:Lj5/o;

    invoke-virtual {v0, p1}, Lj5/o;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final d(Lcom/google/firebase/auth/FirebaseAuth;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj5/j;->a:Lj5/o;

    invoke-virtual {v0, p1}, Lj5/o;->f(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method
