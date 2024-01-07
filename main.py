class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        
        # # split word1 in a list

        list_word1 = ([*word1])

        # invert word2 

        list_word2 = ([*word2])

        # # split word 2 in a list
        new_list_word2 = []

        for _ in list_word2[::-1]:
            new_list_word2.append(_)

        new_list_word2[0]

        # merge_alternately = []

        # merge_alternately = list_word1 [0] + new_list_word2[0]...

        if len(list_word1) > len(new_list_word2):
            for index, value in enumerate(list_word1):
                print(index)
        # list 1 [0]+list [0]....

solution = Solution()
print(solution.mergeAlternately("luciano","pedro"))
