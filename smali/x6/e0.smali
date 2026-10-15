###### Class x6.e0 (x6.e0)
.class public final Lx6/e0;
.super Ljava/lang/Object;
.source "SessionGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/e0$b;
    }
.end annotation


# static fields
.field public static final f:Lx6/e0$b;


# instance fields
.field private final a:Lx6/k0;

.field private final b:Ls9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/a<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Lx6/z;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx6/e0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/e0$b;-><init>(Lt9/g;)V

    sput-object v0, Lx6/e0;->f:Lx6/e0$b;

    return-void
.end method

.method public constructor <init>(Lx6/k0;Ls9/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/k0;",
            "Ls9/a<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "timeProvider"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuidGenerator"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx6/e0;->a:Lx6/k0;

    .line 3
    iput-object p2, p0, Lx6/e0;->b:Ls9/a;

    .line 4
    invoke-direct {p0}, Lx6/e0;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx6/e0;->c:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lx6/e0;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lx6/k0;Ls9/a;ILt9/g;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 6
    sget-object p2, Lx6/e0$a;->x:Lx6/e0$a;

    .line 7
    :cond_6
    invoke-direct {p0, p1, p2}, Lx6/e0;-><init>(Lx6/k0;Ls9/a;)V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lx6/e0;->b:Ls9/a;

    invoke-interface {v0}, Ls9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "uuidGenerator().toString()"

    invoke-static {v1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lba/g;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lx6/z;
    .registers 9

    .line 1
    iget v0, p0, Lx6/e0;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx6/e0;->d:I

    .line 2
    new-instance v7, Lx6/z;

    if-nez v0, :cond_d

    .line 3
    iget-object v0, p0, Lx6/e0;->c:Ljava/lang/String;

    goto :goto_11

    :cond_d
    invoke-direct {p0}, Lx6/e0;->b()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v2, v0

    .line 4
    iget-object v3, p0, Lx6/e0;->c:Ljava/lang/String;

    .line 5
    iget v4, p0, Lx6/e0;->d:I

    .line 6
    iget-object v0, p0, Lx6/e0;->a:Lx6/k0;

    invoke-interface {v0}, Lx6/k0;->a()J

    move-result-wide v5

    move-object v1, v7

    .line 7
    invoke-direct/range {v1 .. v6}, Lx6/z;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 8
    iput-object v7, p0, Lx6/e0;->e:Lx6/z;

    .line 9
    invoke-virtual {p0}, Lx6/e0;->c()Lx6/z;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lx6/z;
    .registers 2

    .line 1
    iget-object v0, p0, Lx6/e0;->e:Lx6/z;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "currentSession"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

###### Class x6.e0.a (x6.e0$a)
.class final synthetic Lx6/e0$a;
.super Lt9/j;
.source "SessionGenerator.kt"

# interfaces
.implements Ls9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/e0;-><init>(Lx6/k0;Ls9/a;ILt9/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/j;",
        "Ls9/a<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field public static final x:Lx6/e0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/e0$a;

    invoke-direct {v0}, Lx6/e0$a;-><init>()V

    sput-object v0, Lx6/e0$a;->x:Lx6/e0$a;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Ljava/util/UUID;

    const/4 v1, 0x0

    const-string v3, "randomUUID"

    const-string v4, "randomUUID()Ljava/util/UUID;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lt9/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lx6/e0$a;->l()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/UUID;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

###### Class x6.e0.b (x6.e0$b)
.class public final Lx6/e0$b;
.super Ljava/lang/Object;
.source "SessionGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lx6/e0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lx6/e0;
    .registers 3

    .line 1
    sget-object v0, Lb5/c;->a:Lb5/c;

    invoke-static {v0}, Lb5/o;->a(Lb5/c;)Lb5/g;

    move-result-object v0

    const-class v1, Lx6/e0;

    invoke-virtual {v0, v1}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Firebase.app[SessionGenerator::class.java]"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lx6/e0;

    return-object v0
.end method
