pragma solidity >=0.7.0 <0.9.0;
contract MachineLearningResults {
    // Struct to represent the machine learning results
    struct MLResult {
        string accuracy;
        string precision;
        string recall;
        string f1Score;
    }
    
    // Array to store machine learning results
    MLResult[] public results;
    
    // Function to store machine learning results
    function storeResults(
        string memory accuracy,
        string memory precision,
        string memory recall,
        string memory f1Score
    ) public {
        // Create a new MLResult instance and add it to the array
        MLResult memory newResult = MLResult(accuracy, precision, recall, f1Score);
        results.push(newResult);
    }
}
