###### Class x6.x (x6.x)
.class public interface abstract Lx6/x;
.super Ljava/lang/Object;
.source "SessionDatastore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/x$a;
    }
.end annotation


# static fields
.field public static final a:Lx6/x$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lx6/x$a;->a:Lx6/x$a;

    sput-object v0, Lx6/x;->a:Lx6/x$a;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

###### Class x6.x.a (x6.x$a)
.class public final Lx6/x$a;
.super Ljava/lang/Object;
.source "SessionDatastore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lx6/x$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/x$a;

    invoke-direct {v0}, Lx6/x$a;-><init>()V

    sput-object v0, Lx6/x$a;->a:Lx6/x$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lx6/x;
    .registers 3

    .line 1
    sget-object v0, Lb5/c;->a:Lb5/c;

    invoke-static {v0}, Lb5/o;->a(Lb5/c;)Lb5/g;

    move-result-object v0

    const-class v1, Lx6/x;

    invoke-virtual {v0, v1}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Firebase.app[SessionDatastore::class.java]"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lx6/x;

    return-object v0
.end method
