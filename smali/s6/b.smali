###### Class s6.b (s6.b)
.class public final Ls6/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls6/b$a;
    }
.end annotation


# static fields
.field private static final b:Ls6/b;


# instance fields
.field private final a:Ls6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls6/b$a;

    .line 1
    invoke-direct {v0}, Ls6/b$a;-><init>()V

    invoke-virtual {v0}, Ls6/b$a;->a()Ls6/b;

    move-result-object v0

    sput-object v0, Ls6/b;->b:Ls6/b;

    return-void
.end method

.method constructor <init>(Ls6/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls6/b;->a:Ls6/a;

    return-void
.end method

.method public static b()Ls6/b$a;
    .registers 1

    new-instance v0, Ls6/b$a;

    .line 1
    invoke-direct {v0}, Ls6/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ls6/a;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Ls6/b;->a:Ls6/a;

    return-object v0
.end method

.method public c()[B
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_messaging/zze;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

###### Class s6.b.a (s6.b$a)
.class public final Ls6/b$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ls6/a;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls6/b$a;->a:Ls6/a;

    return-void
.end method


# virtual methods
.method public a()Ls6/b;
    .registers 3

    new-instance v0, Ls6/b;

    iget-object v1, p0, Ls6/b$a;->a:Ls6/a;

    .line 1
    invoke-direct {v0, v1}, Ls6/b;-><init>(Ls6/a;)V

    return-object v0
.end method

.method public b(Ls6/a;)Ls6/b$a;
    .registers 2

    iput-object p1, p0, Ls6/b$a;->a:Ls6/a;

    return-object p0
.end method
