###### Class x7.i (x7.i)
.class public Lx7/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lx7/i;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lx7/i;
    .registers 3

    const-string v0, "Name is null or empty"

    invoke-static {p0, v0}, La8/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version is null or empty"

    invoke-static {p1, v0}, La8/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx7/i;

    invoke-direct {v0, p0, p1}, Lx7/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/i;->b:Ljava/lang/String;

    return-object v0
.end method
