###### Class z7.b (z7.b)
.class public Lz7/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lz7/d;

.field private final b:Lz7/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz7/d;

    invoke-direct {v0}, Lz7/d;-><init>()V

    iput-object v0, p0, Lz7/b;->a:Lz7/d;

    new-instance v1, Lz7/c;

    invoke-direct {v1, v0}, Lz7/c;-><init>(Lz7/a;)V

    iput-object v1, p0, Lz7/b;->b:Lz7/c;

    return-void
.end method


# virtual methods
.method public a()Lz7/a;
    .registers 2

    iget-object v0, p0, Lz7/b;->b:Lz7/c;

    return-object v0
.end method

.method public b()Lz7/a;
    .registers 2

    iget-object v0, p0, Lz7/b;->a:Lz7/d;

    return-object v0
.end method
