.class Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0c07e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$300(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 173
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_6

    .line 163
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 164
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 167
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 170
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 146
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    .line 147
    return-void
.end method
